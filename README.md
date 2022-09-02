#テーブル設計
## users テーブル
| Colmn    | Type     | Option       |
| -------  | ------   |  ------      |
| name     | string   | null:false, unique: true |
| email    | string   | null:false   |
| encrypted_password | string   | null:false   |
| profile   | text   | null:false   |
| position | string  | null:false   |
| accupation| text |  null:false | 
### association
- has_many :comments
- has_many :tweets

## commentテーブル
| Colmn | Type | Option|
| ------| -----| ------|
| content | text | null:false |
| prototype | reference | null:false, foreign_key: true |
| user | reference | null:false, foreign_key: true | 

### association

- belongs_to :user
- belongs_to :comment



## prototypeテーブル

| colmn | Type | Option |
| ----- | ---- | ------ |
| title | text | null:false |
| catch_copy | text | null:false |
| concept | text | null:false |
| user | references | null:false, foreign_key: true

### association

- has_many :comment
- belongs_to :user
