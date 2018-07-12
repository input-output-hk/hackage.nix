{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hedgehog-corpus";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Tim McGilchrist";
        maintainer = "Tim McGilchrist <timmcgil@gmail.com>";
        author = "Tim McGilchrist <timmcgil@gmail.com>";
        homepage = "https://github.com/tmcgilchrist/hedgehog-corpus";
        url = "";
        synopsis = "hedgehog-corpus";
        description = "Collection of strings for testing things.";
        buildType = "Simple";
      };
      components = {
        "hedgehog-corpus" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }