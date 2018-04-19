{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-common";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
        author = "Maurício C. Antunes";
        homepage = "http://bitbucket.org/mauricio/bindings-common";
        url = "";
        synopsis = "Macros and modules to facilitate writing library bindings.";
        description = "This package contains @hsc2hs@ macros and Haskell\nmodules that can be used to write C library\nbindings according to a well defined standard. See\n\"Bindings\" module documentation for details.";
        buildType = "Simple";
      };
      components = {
        bindings-common = {
          depends  = [ hsPkgs.base ];
        };
      };
    }