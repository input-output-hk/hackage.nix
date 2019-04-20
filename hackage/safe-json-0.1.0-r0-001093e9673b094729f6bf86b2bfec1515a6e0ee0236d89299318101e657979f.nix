{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "safe-json"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2019 Felix Paulusma";
      maintainer = "felix.paulusma@gmail.com";
      author = "Felix Paulusma";
      homepage = "https://github.com/Vlix/safe-json#readme";
      url = "";
      synopsis = "Automatic JSON format versioning";
      description = "This library aims to make the updating of JSON formats or contents, while keeping backward compatibility, as painless as possible. The way this is achieved is through versioning and defined migration functions to migrate older (or newer) versions to the one used.\n\nThe library mainly consists of two classes:\n\n* @SafeJSON a@: Defines the version of @a@ and if (and how) it is migratable.\n\n* @Migrate a@: Defines the data type (@MigrateFrom a@) that can be migrated to @a@ and how to migrate from that type.\n\nUsing these two classes, JSON serialized data types will stay parsable, even after format changes.\n\nFor a more in-depth explanation and examples, please see the README at <https://github.com/Vlix/safe-json#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.hashable)
          (hsPkgs.scientific)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hunit)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid-types)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "safe-json-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dlist)
            (hsPkgs.generic-arbitrary)
            (hsPkgs.hashable)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.safe-json)
            (hsPkgs.scientific)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.uuid-types)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }