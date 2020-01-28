# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-darwin18]

* System dependencies

* Configuration

* Database creation

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, index: true|
|email|string|null: false, default: ""|
|password|string|null: false, default: ""|
### Association
- has_many :kids through: :kids_users
- has_many :kids_users
- has_many :notices


## kidsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|name|index|unique: frue|
|grade|string|null: false|
|sex|integer|null: false|
|picture|binary|
t.timestamps
### Association
- has_many :users through: :kids_users
- has_many :kids_users
- has_many :notices


## kids_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true|
|kid|references|foreign_key: true|
### Association
- belongs_to :kid
- belongs_to :user


## noticesテーブル
|Column|Type|Options|
|------|----|-------|
|content|string|
|image|string|
|user|reference||foreign_key: true|
|kid|reference|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :kid

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
