{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "embeddock";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "muranushi@gmail.com";
        author = "Takayuki Muranushi";
        homepage = "https://github.com/nushio3/embeddock";
        url = "";
        synopsis = "Embed the values in scope in the haddock documentation of the module";
        description = "embeddock is a Haskell source-code preprocessor.\nIt allows you to embed computer-generated\nvalues in the documentation.";
        buildType = "Simple";
      };
      components = {
        "embeddock" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "embeddock" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.her-lexer
              hsPkgs.MissingH
              hsPkgs.process
            ];
          };
        };
      };
    }