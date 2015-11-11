## Contributors
Sebastian Huber,
Adam Czogallik

## Answers
**argumente für scaffold:**
Columname + typ

**welche änderungen:**
Tweet Tabelle erstellt
mit colums status
und referenz zu Zombies

scaffold wurde migrated

**welche schritte nach klonen**
evtl fehlende bundle installieren
rake:db migrate
server starten

**Zeigen Sie drei Arten, wie man für einen vorhandenen Zombie einen neuen Tweet anlegen kann**
```z = Zombie.find(1)
t = Tweet.new t.status = "my tweet" t.zombie = z t.save
t = Tweet.new(:status => "my tweet", :zombie => z) t.save
t = Tweet.create(:status => "my tweet", :zombie => z)```

**Wenn ein Zombie gelöscht wird, werden dann seine Tweets mit gelöscht? Wie kann man das verhindern / ermöglichen?**
daten werden standardmäßig nicht kaskadierend gelöscht.
```:dependent => :delete_all```

**Funktioniert SQL Injection?**
ja