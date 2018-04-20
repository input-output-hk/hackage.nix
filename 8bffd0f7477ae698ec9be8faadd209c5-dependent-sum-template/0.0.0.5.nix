{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dependent-sum-template";
          version = "0.0.0.5";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "/dev/null";
        url = "";
        synopsis = "Template Haskell code to generate instances of classes in dependent-sum package";
        description = "Template Haskell code to generate instances of classes in dependent-sum package, such as 'GEq' and 'GCompare'.";
        buildType = "Simple";
      };
      components = {
        dependent-sum-template = {
          depends  = [
            hsPkgs.base
            hsPkgs.dependent-sum
            hsPkgs.template-haskell
            hsPkgs.th-extras
          ];
        };
      };
    }