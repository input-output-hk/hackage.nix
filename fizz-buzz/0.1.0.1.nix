{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fizz-buzz";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "";
        url = "";
        synopsis = "Functional Fizz/Buzz";
        description = "Convert Numbers to their respective Fizz and or Buzz representations.";
        buildType = "Simple";
      };
      components = {
        fizz-buzz = {
          depends  = [ hsPkgs.base ];
        };
      };
    }