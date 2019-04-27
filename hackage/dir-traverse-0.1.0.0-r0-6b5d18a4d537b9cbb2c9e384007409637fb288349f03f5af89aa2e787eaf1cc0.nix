{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "dir-traverse"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Simple directory traversal library";
      description = "Simple cross-platform directory traversals in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dlist)
          (hsPkgs.directory)
          (hsPkgs.composition-prelude)
          (hsPkgs.filepath)
          ];
        };
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
            ];
          };
        };
      };
    }