#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../../../../test/test_helper'

class SettingsTest < Test::Unit::TestCase
	
	def setup
		Settings.create(:var => 'test', :value => 'foo')
		Settings.create(:var => 'secondary_test', :value => 'bar')
	end
	
	def test_get
		assert_equal 'foo', Settings.test
		assert_equal 'foo', Settings[:test]
		assert_equal 'foo', Settings['test']
		
		assert_equal 'bar', Settings.secondary_test
		assert_equal 'bar', Settings[:secondary_test]
		assert_equal 'bar', Settings['secondary_test']
	end
	
	def test_set
		assert_equal '321', Settings.test = '321'
		assert_equal '321', Settings[:test] = '321'
		assert_equal '321', Settings['test'] = '321'
		
		assert_equal '321', Settings.test
	end
	
	def test_create
		assert_equal '123', Settings.onetwothree = '123'
		assert_equal '123', Settings[:onetwothree] = '123'
		assert_equal '123', Settings['onetwothree'] = '123'
		
		assert_equal '123', Settings.onetwothree
	end
end
