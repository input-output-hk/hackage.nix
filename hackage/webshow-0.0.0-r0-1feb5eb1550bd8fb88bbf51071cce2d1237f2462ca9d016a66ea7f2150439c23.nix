{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "webshow"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/chrisdone/webshow#readme";
      url = "";
      synopsis = "Show programming language printed values in a web UI";
      description = "Show programming language printed values in a web UI. Supports Haskell Show values only at the moment.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "webshow" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.http-types)
            (hsPkgs.pretty-show)
            (hsPkgs.directory)
            (hsPkgs.optparse-simple)
            (hsPkgs.optparse-applicative)
            (hsPkgs.lucid)
            (hsPkgs.hscolour)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.file-embed)
            ];
          };
        };
      };
    }