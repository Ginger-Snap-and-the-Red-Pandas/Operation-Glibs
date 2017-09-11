module StoryCreationHelper


  #Input: Your story, story_scenes, and the user uploaded photo_urls
  #NOTE: This method will be re-written once PaperClip is hooked up
  def create_story_pictures(story, scenes, picture_urls)

      @picture_one = Picture.create(story: story, scene: scenes[0], url: picture_urls[0])
      @picture_two = Picture.create(story: story, scene: scenes[1], url: picture_urls[1])
      @picture_three = Picture.create(story: story, scene: scenes[2], url: picture_urls[2])

    [@picture_one, @picture_two, @picture_three]
  end


end
