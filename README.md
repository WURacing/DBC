# DBC

This repo will contain the collection of DBC files used on the BFR/WUFR series of cars.

## Repo Structure
The repository will be structured as follows:

```
DBC
│   README.md
│   Other_Root_Files    
│
└───dbc
│   │   1.2.0.dbc
│   │   1.3.0.dbc
|   |   1.3.0.h
|   |   ...
```

The root directory can contain any assorted files.
The `dbc` subdirectory should **ONLY** contain *three point versioned dbc and h files*, as specified in [DBC Versioning](#dbc_versioning)

## <a name="dbc_versioning"></a> DBC Versioning

DBC files shall follow a modification of the three-point semantic versioning strategy.

```
model_year.major_version.minor_version.[dbc|h]

i.e.

2019.2.1.dbc
2019.2.1.h
```

| Version Point | Explanation |
| -- | -- |
| model_year | The full numeric competition year of the car |
| major_version | A new major version should be given when there is a breaking change in the file- for instance modifying the packing format of a previously included packet, or a major change, such as a new packet |
| minor_version | A new minor version should be given when there is a non-breaking change in the file, such as an additional signal in a packet which does not modify the packing format of previously used signals |

This Versioning strategy is being adopted to make easy to pull DBC files via the Gihub API, to more easily track our history of DBC files, and to make it possible to parse data from files logged before the date of the most recent DBC update.

## Tooling

The best way to view / modify DBC files that we have found is the "Kvaser Database Editor". This can be downloaded [here](https://www.kvaser.com/download/) under the name "Kvaser Database Editor 3" or via direct download [here](https://www.kvaser.com/download/?utm_source=software&utm_ean=7330130981942&utm_status=latest).

## TODO

- 2020.1.0-WIP.dbc
  - Validate the PE3 conversions
  - Add offset, scale, min, and max for WUFR signals