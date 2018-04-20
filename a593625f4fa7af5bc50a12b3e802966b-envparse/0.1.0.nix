{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "envparse";
          version = "0.1.0";
        };
        license = "BSD-2-Clause";
        copyright = "2014 Matvey Aksenov";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "http://example.com/";
        url = "";
        synopsis = "Parse environment variables";
        description = "Here's a simple example\n\n@\nmodule Main (main) where\n\nimport Control.Monad (unless)\nimport Env\n\ndata Hello = Hello &#x7b; name :: String, quiet :: Bool &#x7d;\n\nhello :: IO Hello\nhello = Env.parse (header \\\"envparse example\\\") \$\n&#x20; Hello \\<\$\\> var (str <=< nonempty) \\\"NAME\\\"  (help \\\"Target for the greeting\\\")\n&#x20;       \\<*\\> switch                 \\\"QUIET\\\" (help \\\"Whether to actually print the greeting\\\")\n&#x20;\nmain :: IO ()\nmain = do\n&#x20; Hello &#x7b; name, quiet &#x7d; <- hello\n&#x20; unless quiet \$\n&#x20;   putStrLn (\\\"Hello, \\\" ++ name ++ \\\"!\\\")\n@";
        buildType = "Simple";
      };
      components = {
        envparse = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
            ];
          };
        };
      };
    }