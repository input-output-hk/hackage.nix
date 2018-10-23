{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "options";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-options/";
      url = "";
      synopsis = "Parsing command-line options";
      description = "The @options@ package lets library and application developers easily work\nwith command-line options.\n\nThe following example is a full program that can accept two options,\n@--message@ and @--quiet@:\n\n@\n&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;\n\nimport Options\n\ndefineOptions \\\"MainOptions\\\" \$ do\n&#x20;   stringOption \\\"optMessage\\\" \\\"message\\\" \\\"Hello world!\\\"\n&#x20;       \\\"A message to show the user.\\\"\n&#x20;   boolOption \\\"optQuiet\\\" \\\"quiet\\\" False\n&#x20;       \\\"Whether to be quiet.\\\"\n&#x20;\nmain :: IO ()\nmain = runCommand \$ \\\\opts args -> do\n&#x20;   if optQuiet opts\n&#x20;       then return ()\n&#x20;       else putStrLn (optMessage opts)\n@\n\n>\$ ./hello\n>Hello world!\n>\$ ./hello --message='ciao mondo'\n>ciao mondo\n>\$ ./hello --quiet\n>\$\n\nIn addition, this library will automatically create documentation options\nsuch as @--help@ and @--help-all@:\n\n>\$ ./hello --help\n>Help Options:\n>  -h, --help                  Show option summary.\n>  --help-all                  Show all help options.\n>\n>Application Options:\n>  --message                   A message to show the user.\n>  --quiet                     Whether to be quiet.";
      buildType = "Simple";
    };
    components = {
      "options" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.monads-tf)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }