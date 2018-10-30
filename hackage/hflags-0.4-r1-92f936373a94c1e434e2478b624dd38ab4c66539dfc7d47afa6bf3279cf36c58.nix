{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hflags";
        version = "0.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Gergely Risko <gergely@risko.hu>";
      author = "Mihaly Barasz <klao@google.com>, Gergely Risko <gergely@risko.hu>";
      homepage = "http://github.com/errge/hflags";
      url = "";
      synopsis = "Command line flag parser, very similar to Google's gflags";
      description = "The @HFlags@ library supports easy definition of command line flags,\nreimplementing the ideas from Google's @gflags@\n(<http://code.google.com/p/gflags>).\n\nCommand line flags can be declared in any file at the toplevel,\nusing 'defineFlag'.  At runtime, the actual values are assigned to\nthe toplevel @flags_name@ constants.  Those can be used purely\nthroughout the program.\n\nAt the beginning of the @main@ function, @\$initHFlags \\\"program\ndescription\\\"@ has to be called to initialize the flags.  All flags\nwill be initialized that are transitively reachable via imports from\n@main@.  This means, that any Haskell package can easily define\ncommand line flags with @HFlags@.  This feature is demonstrated by\n<http://github.com/errge/hflags/blob/master/examples/ImportExample.hs>\nand <http://github.com/errge/hflags/tree/master/examples/package>.\n\nA simple example (more in the\n<http://github.com/errge/hflags/tree/master/examples> directory):\n\n@\n\\#!\\/usr\\/bin\\/env runhaskell\n\n&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;\n\nimport HFlags\n\n'defineFlag' \\\"name\\\" \\\"Indiana Jones\\\" \\\"Who to greet.\\\"\n'defineFlag' \\\"r:repeat\\\" (3 + 4 :: Int) \\\"Number of times to repeat the message.\\\"\n\nmain = do s <- \$initHFlags \\\"Simple program v0.1\\\"\n&#x20;         sequence_ \$ replicate flags_repeat greet\n&#x20;         putStrLn \$ \\\"Your additional arguments were: \\\" ++ show s\n&#x20;         putStrLn \$ \\\"Which is the same as: \\\" ++ show HFlags.arguments\n&#x20; where\n&#x20;   greet = putStrLn \$ \\\"Hello \\\" ++ flags_name ++ \\\", very nice to meet you!\\\"\n@\n\nAt @initHFlags@ time, the library also tries to gather flags out of\nenvironment variables.  @HFLAGS_verbose=True@ is equivalent to\nspecify --verbose=True.  This environment feature only works with\nlong options and the user has to specify a value even for Bools.\n\n/Since version 0.2, you mustn't put the initHFlags in a parentheses with the program description.  Just/ @\$initHFlags@, /it's cleaner./\n\nSee <http://github.com/errge/hflags/tree/master/changelog> for recent changes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
    };
  }