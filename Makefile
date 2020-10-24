AWK ?= awk

SOURCES = $(wildcard dbc/*.dbc)
OBJECTS = $(patsubst dbc/%.dbc, dbc/%.h, $(SOURCES))

all: $(OBJECTS)

dbc/%.h: dbc/%.dbc
	cd hsk-libs && "$(AWK)" -f scripts/dbc2c.awk < "../$<" >"../$@"

