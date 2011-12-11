require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  test "project attributes must not be empty" do
    project = Project.new
    assert project.invalid?
    assert project.errors[:title].any?
    assert project.errors[:description].any?
    assert project.errors[:image_url].any?
    assert project.errors[:trailer_url].any?
  end

  test "project title must be unique" do
    project = projects(:one)
    assert !project.save
    assert_equal "has already been taken", project.errors[:title].join('; ')
  end
end
