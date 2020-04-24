{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "uu-parsinglib"; version = "2.7.4.1"; };
      license = "MIT";
      copyright = "S Doaitse Swierstra";
      maintainer = "Doaitse Swierstra";
      author = "Doaitse Swierstra, Utrecht University";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
      url = "";
      synopsis = "Fast, online, error-correcting, monadic, applicative, merging, permuting, idiomatic parser combinators.";
      description = "New version of the Utrecht University parser combinator library, which  provides online, error correction,\nannotation free, applicative style parser combinators. In addition to this we do  provide a monadic and idomatic interface.\nParsers do analyse themselves to avoid commonly made errors. A recent addition was the combinator @`<||>`@ and\nassociates, which generalise merging and permuting parsers.\n\nThis version is based on the module \"Data.Listlike\", and as a result a great variety of input structures (@Strings@, @ByteStrings@, etc.)\ncan be handled.\n\nThe modules \"Text.ParserCombinators.UU.Demo.Examples\", \"Text.ParserCombinators.UU.Idioms\" and \"Text.ParserCombinators.UU.Demo.MergeAndpermute\"\ncontain a ready-made  @show_examples@  function,\nwhich can be called (e.g. from @ghci@) to see e.g. the error correction at work. It contains extensive haddock documentation, so why not just take a look                           to see the correction process at work, and to get a feeling for how the various combinators can be used?\n\nThe file \"Text.ParserCombinators.UU.CHANGELOG\" contains a log of the most recent changes and additions.\n\nThe file \"Text.ParserCombinators.UU.README\" contains some references to background information.\n\nWe maintain a low frequency mailing for discussing the package. You can subscribe at:  <https://mail.cs.uu.nl/mailman/listinfo/parsing>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          ];
        buildable = true;
        };
      };
    }