# DB設計

## users table
|Column|Type|Options|
|------|----|-------|
|name|string|index: true,null: false,unique: true|
|mail|string|null: false|
|password|string|null: false|

### Association
- has_many :groups,through: :members
- has_many :messages
- has_many :members

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user|references|null: false, foreign_key: true|
### Association
- has_many :messages
- has_many :members

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user