{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "named";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
        author = "Vladislav Zavialov";
        homepage = "";
        url = "";
        synopsis = "Named parameters (keyword arguments) for Haskell";
        description = "`named` is a lightweight library for named function parameters (keyword\narguments) based on overloaded labels. Keyword arguments have several\nadvantages over positional arguments:\n\n* they can be supplied in arbitrary order\n* their names serve as documentation at call site\n* it is impossible to accidentally mix them up\n\nUnlike @newtype@ wrappers, keyword arguments don't pollute the global\nnamespace, don't require top-level definitions, and don't need to be\nexported.\n\nThis implementation of named parameters is typesafe, provides good type\ninference, descriptive type errors, and has no runtime overhead.\n\nExample usage:\n\n> import Named\n>\n> createSymLink :: FilePath `Named` \"from\" -> FilePath `Named` \"to\" -> IO ()\n> createSymLink (Named from) (Named to) = ...\n>\n> main = createSymLink ! #from \"/path/to/source\"\n>                      ! #to \"/target/path\"";
        buildType = "Simple";
      };
      components = {
        "named" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "regression" = {
            depends  = [
              hsPkgs.base
              hsPkgs.named
            ];
          };
        };
      };
    }