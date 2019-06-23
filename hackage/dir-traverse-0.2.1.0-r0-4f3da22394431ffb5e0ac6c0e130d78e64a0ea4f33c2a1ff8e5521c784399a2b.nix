{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "dir-traverse"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Simple directory traversal library";
      description = "Simple cross-platform directory traversals in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.directory) ]; };
      benchmarks = {
        "dir-traverse-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dir-traverse)
            (hsPkgs.criterion)
            (hsPkgs.dirstream)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.system-filepath)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }