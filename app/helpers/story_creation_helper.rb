module StoryCreationHelper


  #Input: Your story, story_scenes, and the user uploaded photo_urls
  #NOTE: This method will be re-written once PaperClip is hooked up
  def create_story_pictures(story, scenes, picture_urls)

      @picture_one = Picture.create(story: story, scene: scenes[0], url: picture_urls[0])
      @picture_two = Picture.create(story: story, scene: scenes[1], url: picture_urls[1])
      @picture_three = Picture.create(story: story, scene: scenes[2], url: picture_urls[2])

    [@picture_one, @picture_two, @picture_three]
  end

  #This method is for when Josh screws up the API calls
  # (Like if Josh is too large for the photo analyzer)
  def josh_api_screwup(photos)

      labeled_tags = []
      josh = 1
      josh_error = ""
      photos.each do |photo|
        photo_details = AnalyzableHelper.picling(photo.image.url)
        if photo_details.is_a? String
          josh_error << josh.to_s + " "
        end
        labeled_tags << photo_details
        josh += 1
      end
      @error = "Photo(s) # #{josh_error}may be too large...or the contractors MS sent us to process photos are on break and you should try again. See if your photo is larger than 4mb, otherwise try again...or give up. Whatever -Your Friends at Team GLIBS"

      josh_error.empty? ? labeled_tags : @error
  end

  def create_story_generated_words(labeled_tags, scenes, story)
      scenes.length.times do |i|
        word_blanks = scenes[i].word_blanks
        photo_caption = labeled_tags[i][0]
        labeled_photo_words = labeled_tags[i][1]
        word_blanks = word_blanks.to_ary
        caption_blank = word_blanks.shift

          #Keep the store_scene_caption call before the generate_glibs call, as we storing the photo-caption as the FIRST generated_word for a scene

        store_scene_caption(photo_caption, caption_blank, story)

          #generate_glibs takes in a hashing of words/tags, then with each word_blank creates a generated word. Each generated word has a story_id of @story.id

        generate_glibs(labeled_photo_words, word_blanks, story)
      end
  end

end
