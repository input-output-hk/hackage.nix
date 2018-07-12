{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "safe";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2007-2011";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://community.haskell.org/~ndm/safe/";
        url = "";
        synopsis = "Library for safe (pattern match free) functions";
        description = "Partial functions from the base library, such as @head@ and @!!@, modified\nto return more descriptive error messages, programmer defined error messages,\n@Maybe@ wrapped results and default values.\nThese functions can be used to reduce the number of unsafe pattern matches in\nyour code.";
        buildType = "Simple";
      };
      components = {
        "safe" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }