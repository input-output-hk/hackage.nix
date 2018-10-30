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
      specVersion = "1.10";
      identifier = {
        name = "syntax";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Reversible parsing and pretty-printing.";
      description = "\"syntax\" allows you to write a single syntax description and instantiate is both as a parser and a pretty printer.\n\nSyntax descriptions are written in applicative or arrow style. The library uses a custom typeclass hierarchy, provided\nby the \"semi-iso\" package. Most of the time you will be using operators like '/\$/', '/*/' and '/+/' (= '<|>'), just\nlike parser combinators. When more power is needed - e.g. when the syntax depends on the parsed or printed value -\nyou turn to arrows.\n\nSemi-isomorphisms from \"semi-iso\" are the basic building block of syntax descriptions. I recommend reading\nthe hackage page of \"semi-iso\" first, as it contains much more information.\n\nOnce you write a syntax description (polymorphic in the syntax category) you can instantiate it both as a parser or as\na pretty-printer. The library \"syntax-attoparsec\" gives you the ability to extract an Attoparsec parser. Pretty-printing\nis implemented by the \"syntax-printer\" library, which uses Text and ByteString builders. (Note that formatting is handled\nby \"syntax\" itself, not by the printer library)\n\nAdvanced formatting and parsing (for example indentation, haskell layout rule) is implemented as category transformers\n(similar to monad transformers). Currently only simple indentation is implemented (in \"Data.Syntax.Indent\") - basically\na reader category transformer that tracks current indentation level. I plan on implementing Haskell layout rule in the\nfuture.\n\nThe library can work with both text and binary data. Alas, there are no binary combinators implemented yet.\nI will implement them when i have the time (but these category transformers look so much more interesting for now ;).\n\nEXAMPLES! See @syntax-example@ and @syntax-example-json@ for examples.\n\n* \"syntax-example\" implements a simple lambda calculus.\n\n* \"syntax-example-json\" implements a json parser and pretty printer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mono-traversable)
          (hsPkgs.lens)
          (hsPkgs.semi-iso)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
    };
  }