{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stack-yaml";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "J Mitchell (jacob.mitchell@iohk.io)";
        maintainer = "phlummox2@gmail.com";
        author = "phlummox 2017, adapted from J Mitchell (jacob.mitchell@iohk.io)";
        homepage = "https://github.com/phlummox/stack-yaml";
        url = "";
        synopsis = "Parse a stack.yaml file";
        description = "stack-yaml parses a \"stack.yaml\" file, as used by stack,\nand returns a simple data structure containing\nits configuration data.";
        buildType = "Simple";
      };
      components = {
        stack-yaml = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.yaml
          ];
        };
        tests = {
          hup-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.stack-yaml
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
        };
      };
    }