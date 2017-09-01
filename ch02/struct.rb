# subject、gpaのフィールドを定義
SchoolRecord = Struct.new(:subject,:gpa)

# スーパークラスはStructクラス
p SchoolRecord.superclass #Struct 

record = SchoolRecord.new("english",3.2)
#recordオブジェクトでフィールドへアクセス
p record.subject #english
p record.gpa #3.2

#ハッシュっぽい使い方
p record[:subject] #english

p record.members #[:subject, :gpa]