{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "options";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <john@john-millikin.com>";
        author = "John Millikin <john@john-millikin.com>";
        homepage = "https://john-millikin.com/software/haskell-options/";
        url = "";
        synopsis = "A powerful and easy-to-use command-line option parser.";
        description = "The @options@ package lets library and application developers easily work\nwith command-line options.\n\nThe following example is a full program that can accept two options,\n@--message@ and @--quiet@:\n\n@\nimport Control.Applicative\nimport Options\n\ndata MainOptions = MainOptions\n&#x20;   &#x7b; optMessage :: String\n&#x20;   , optQuiet :: Bool\n&#x20;   &#x7d;\n\ninstance 'Options' MainOptions where\n&#x20;   defineOptions = pure MainOptions\n&#x20;       \\<*\\> simpleOption \\\"message\\\" \\\"Hello world!\\\"\n&#x20;           \\\"A message to show the user.\\\"\n&#x20;       \\<*\\> simpleOption \\\"quiet\\\" False\n&#x20;           \\\"Whether to be quiet.\\\"\n\nmain :: IO ()\nmain = runCommand \$ \\\\opts args -> do\n&#x20;   if optQuiet opts\n&#x20;       then return ()\n&#x20;       else putStrLn (optMessage opts)\n@\n\n>\$ ./hello\n>Hello world!\n>\$ ./hello --message='ciao mondo'\n>ciao mondo\n>\$ ./hello --quiet\n>\$\n\nIn addition, this library will automatically create documentation options\nsuch as @--help@ and @--help-all@:\n\n>\$ ./hello --help\n>Help Options:\n>  -h, --help\n>    Show option summary.\n>  --help-all\n>    Show all help options.\n>\n>Application Options:\n>  --message :: text\n>    A message to show the user.\n>    default: \"Hello world!\"\n>  --quiet :: bool\n>    Whether to be quiet.\n>    default: false";
        buildType = "Simple";
      };
      components = {
        options = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.monads-tf
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (!system.isWindows && compiler.isGhc) hsPkgs.bytestring;
        };
        tests = {
          options_tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.chell
              hsPkgs.chell-quickcheck
              hsPkgs.containers
              hsPkgs.monads-tf
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (!system.isWindows && compiler.isGhc) hsPkgs.bytestring;
          };
        };
      };
    }