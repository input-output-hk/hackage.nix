{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mallard"; version = "0.5.0.1"; };
      license = "MIT";
      copyright = "2017 Andrew Rademacher <andrewrademacher@icloud.com>";
      maintainer = "andrewrademacher@icloud.com";
      author = "Andrew Rademacher";
      homepage = "https://github.com/AndrewRademacher/mallard";
      url = "";
      synopsis = "Database migration and testing as a library.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.exceptions)
          (hsPkgs.fgl)
          (hsPkgs.file-embed)
          (hsPkgs.hashable)
          (hsPkgs.hasql)
          (hsPkgs.hasql-pool)
          (hsPkgs.hasql-transaction)
          (hsPkgs.Interpolation)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "mallard" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mallard)
            (hsPkgs.exceptions)
            (hsPkgs.fgl)
            (hsPkgs.hasql)
            (hsPkgs.hasql-optparse-applicative)
            (hsPkgs.hasql-pool)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-text)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }