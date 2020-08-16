AWK ?= awk

SOURCES = $(wildcard dbc/*.dbc)
OBJECTS = $(patsubst dbc/%.dbc, dbc/%.h, $(SOURCES))

all: $(OBJECTS)

dbc/%.h: dbc/%.dbc
	"$(AWK)" -f hsk-libs/scripts/dbc2c.awk < "$<" >"$@"

