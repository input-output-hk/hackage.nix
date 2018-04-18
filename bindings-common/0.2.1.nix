{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-common";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
        author = "Maurício C. Antunes";
        homepage = "http://bitbucket.org/mauricio/bindings";
        url = "";
        synopsis = "Low-level library bindings, base package.";
        description = "The @bindings-*@ set of packages contains low level bindings\nfor established libraries, and is aimed at developers of higher\nlevel modules that can use it as foundation. They all mimic the\nnames and functionality of the original libraries. For\na specific library, look for package @bindings-library_name@.";
        buildType = "Simple";
      };
      components = {
        bindings-common = {
          depends  = [ hsPkgs.base ];
        };
      };
    }