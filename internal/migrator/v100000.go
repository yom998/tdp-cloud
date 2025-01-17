package migrator

import (
	"tdp-cloud/internal/dborm"
)

func v100001() error {

	return dborm.Db.AutoMigrate(
		&dborm.Config{},
		&dborm.Session{},
		&dborm.Secret{},
		&dborm.Worker{},
		&dborm.Worktask{},
		&dborm.Sshkey{},
		&dborm.TATScript{},
		&dborm.TATHistory{},
		&dborm.User{},
	)

}
