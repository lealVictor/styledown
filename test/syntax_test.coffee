require './setup'

describe 'Syntax highlight', ->
  describe 'examples', ->
    beforeEach ->
      @load '''
      ### Buttons

          @example
          a.button.primary Primary button
          a.button.success Success button
      '''

    it 'should work', ->
      expect(@$('.sg-code .hljs-tag').length).gte 4
      expect(@$('.sg-code .hljs-value').length).gte 2
      expect(@$('.sg-code .hljs-attribute').length).gte 2
      expect(@$('.sg-code').html()).match /&lt;/

