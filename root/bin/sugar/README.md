Boro's various SugarCRM utilities
=================================

Prerequisites
-------------
1. Need to have `MANGO_BASE`, `DEV_BASE` configured for these to work.
2. Additionally, `SUGAR_LICENSE_KEY` is needed for `sugarinst`.

Example configuration
---------------------
In `.bash_profile`:
```
export MANGO_BASE=$HOME/dev/Mango
export DEV_BASE=$HOME/dev/www
```

List of utilities
-----------------
| Utility name | Purpose                                                                    | Usage example |
|--------------|----------------------------------------------------------------------------|---------------|
| sugarbuild   | Builds Sugar from `$MANGO_BASE`                                            | `sugarbuild <folder> <version (7.9.0.0)> [latin (bool)] [flav]` |
| sugarchive   | Stores cwd SugarCRM installation files and database in a single archive    | `sugarchive -p pack.zip`, `sugarchive -u unpack.zip` |
| sugarchmod   | Assuming cwd is `$DEV_BASE/sugar*`, will set proper permissions for files  | `sugarchmod` |
| sugarinst    | Generates a sugar instance from a given build                              | `sugarinst <hostname> [demo data]` |
| sugarrm      | Assuming cwd is `$DEV_BASE/sugar*`, deletes all files                      | `sugarrm` |
| sugarsubmod  | Updates submodules                                                         | `sugarsubmod` |
| sugarwatch   | Watch source folder for file changes and build Sugar from source to output | `sugarwatch ~/output/ ~/src` |
