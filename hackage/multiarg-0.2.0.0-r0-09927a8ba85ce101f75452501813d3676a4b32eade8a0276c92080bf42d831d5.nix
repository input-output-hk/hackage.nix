{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { newbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "multiarg"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2011-2012 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "https://github.com/massysett/multiarg";
      url = "";
      synopsis = "Combinators to build command line parsers";
      description = "multiarg is a parser combinator library to build command\nline parsers. With it you can easily create parsers with options\nthat take more than one option argument--for example, I created\nmultiarg due to the apparent lack of such ability amongst other\nparsers. Its basic design is loosely inspired by Parsec.\n\nProvides ParserT, a monad you use to build parsers. ParserT is a monad\ntransformer, so you can layer it on top of other monads. For instance\nyou could layer it on the IO monad so that your parser can perform IO.\n\nIt also has a simple, pre-built parser built with the underlying\ncombinators, which works for many situtations and shields you from the\nunderlying complexity if you don't need it.\n\nSee the documentation in the System.Console.MultiArg module for\ndetails.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (if flags.newbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ]);
        buildable = true;
        };
      };
    }