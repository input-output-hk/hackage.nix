{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bitly-cli";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Astanin <s.astanin@gmail.com>";
      author = "";
      homepage = "http://bitbucket.org/jetxee/hs-bitly/";
      url = "";
      synopsis = "A command line tool to access bit.ly URL shortener.";
      description = "This package provides a command line utility to shorten\nand expand URLs using bit.ly/j.mp service. To use this tool, an API\nkey is required. Please find yours at <https://bitly.com/a/account>.\n\nConfiguration file (`~/.bitly`) format:\n\n> login = your_bit.ly_login\n> apikey = your_API_key\n\nUsage examples:\n\n> \$ echo \"Text with an URL: http://example.com/\" | bitly\n> Text with an URL: http://bit.ly/2eSq1z\n> \$ bitly shorten http://example.com\n> http://bit.ly/2eSq1z\n> \$ bitly expand http://bit.ly/2eSq1z\n> http://example.com/";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bitly" = {
          depends  = [
            (hsPkgs.Bitly)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.regexpr)
          ];
        };
      };
    };
  }