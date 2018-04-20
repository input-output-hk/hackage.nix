{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-reify";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Andy Gill";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "http://ittc.ku.edu/~andygill/data-reify.php";
        url = "";
        synopsis = "Reify a recursive data structure into an explicit graph.";
        description = "'data-reify' provided the ability to turn recursive structures into explicit graphs.\nMany (implicitly or explicitly) recursive data structure can be given this ability, via\na type class instance. This gives an alternative to using 'Ref' for observable sharing.\n\nObservable sharing in general is unsafe (hence the module path name Data.Unsafe.Reify),\nbut can be used safely if some simple conditions are met.\nTypically this package will be used to tie the knot with DSL's that depend of\nobservable sharing, like Lava.\n\nProviding an instance for 'MuRef' is the mechanism for allowing a structure to be\nreified into a graph, and four examples of this are provided.\n\nVersion 0.2 of data-reify uses 'StableName's, and is much faster.\n\n&#169; 2009 Andy Gill; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        data-reify = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          data-reify-test1 = {
            depends  = [ hsPkgs.base ];
          };
          data-reify-test2 = {
            depends  = [ hsPkgs.base ];
          };
          data-reify-test3 = {
            depends  = [ hsPkgs.base ];
          };
          data-reify-test4 = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }