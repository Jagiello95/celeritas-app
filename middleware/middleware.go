package middleware

import (
	"myapp/data"

	"github.com/Jagiello95/celeritas"
)

type Middleware struct {
	App    *celeritas.Celeritas
	Models data.Models
}
