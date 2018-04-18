{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pec";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Brett letner 2011";
        maintainer = "Brett Letner <brettletner@gmail.com>";
        author = "Brett Letner <brettletner@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "pec embedded compiler";
        description = "The intent of pec is to provide a drop-in replacement for C, but with modern language features.  Pec is a procedural language with a functional/declarative feel.  Programming in pec is very similar to monadic programming in Haskell.  The primary use case for pec is to provide a productive environment for writing safe, performant embedded applications.";
        buildType = "Simple";
      };
      components = {
        pec = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          pec = {
            depends  = [
              hsPkgs.base
              hsPkgs.derive
              hsPkgs.array
              hsPkgs.filepath
              hsPkgs.cmdargs
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.directory
            ];
          };
        };
      };
    }