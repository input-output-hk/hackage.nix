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
      specVersion = "1.8";
      identifier = {
        name = "re2";
        version = "0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Andrey Sverdlichenko <blaze@ruddy.ru>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://github.com/rblaze/haskell-re2#readme";
      url = "";
      synopsis = "Bindings to the re2 regular expression library";
      description = "re2 is a regular expression library offering predictable run-time and\nmemory consumption. This package is a binding to re2.\n\nSupported expression syntax is documented at\n<https://github.com/google/re2/>\n\n>\$ ghci -XOverloadedStrings\n>ghci> import Regex.RE2\n>\n>ghci> find \"\\\\w+\" \"hello world\"\n>Just (Match [Just \"hello\"])\n>\n>ghci> find \"\\\\w+\$\" \"hello world\"\n>Just (Match [Just \"world\"])\n>\n>ghci> find \"^\\\\w+\$\" \"hello world\"\n>Nothing";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
        ];
        libs = [
          (pkgs."stdc++")
          (pkgs."pthread")
          (pkgs."re2")
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.re2)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }