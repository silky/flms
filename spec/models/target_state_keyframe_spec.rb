require 'spec_helper'

describe Flms::TargetStateKeyframe do
  describe 'defaults' do
    it 'initializes correct defaults for a target keyframe' do
      k = Flms::TargetStateKeyframe.new
      expect(k.scroll_start).to be_nil
      expect(k.scroll_duration).to eql 100
      expect(k.width).to eql 1.0
      expect(k.height).to eql 1.0
      expect(k.position_x).to eql 0.5
      expect(k.position_y).to eql 0.5
      expect(k.opacity).to eql 1.0
      expect(k.scale).to eql 1.0
      expect(k.blur).to eql 0.0
    end
  end
end