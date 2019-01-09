{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "websnap"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Jared Baldridge";
      maintainer = "jrb@expunge.us";
      author = "Jared Baldridge";
      homepage = "https://github.com/jrb/websnap";
      url = "";
      synopsis = "Transforms URLs to PNGs";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "websnap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.webkit)
            (hsPkgs.gtk)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }