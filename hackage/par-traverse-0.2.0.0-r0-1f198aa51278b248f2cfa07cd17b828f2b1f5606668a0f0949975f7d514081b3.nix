{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "par-traverse"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Traverse a directory in parallel";
      description = "Concurrent directory traversals in Haskell using [parallel-io](http://hackage.haskell.org/package/parallel-io)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parallel-io)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        };
      };
    }