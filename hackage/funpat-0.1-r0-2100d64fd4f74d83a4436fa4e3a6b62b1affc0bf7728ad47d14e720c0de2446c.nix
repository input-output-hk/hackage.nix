{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "funpat"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "deva@inf.elte.hu";
      author = "Gergely Devai";
      homepage = "";
      url = "";
      synopsis = "A generalization of pattern matching";
      description = "This library provides pattern matching with /restricted function patterns/\n(RFPs). An expression is an RFP iff exists an equivalent valid Haskell\npattern. For example @(\\\"abc\\\" ++ xs)@ is an RFP, because @(\\'a\\' : \\'b\\' : \\'c\\' : xs)@\nis an equivalent valid Haskell pattern. On the other hand, @(xs ++ \\\"abc\\\")@\nis not an RFP. Details are discussed in the paper /Restricted Function Patterns/\npresented at /TFP 2011/.\n\n/Example 1./ Here is a function to chop off the prefix @\\\"prefix\\\" of strings@:\n\n@\nunprefix :: String -> String\nunprefix s = match s \$ do\n\\   with \$ \\\\z ->   \\\"prefix\\\" ++ z ~> z\n\\   with \$ \\\\z ->   z             ~> z\n@\n\n/Example 2./ Let's have a small embedded language:\n\n@\ndata Expr = Symbol String | Expr :\$ Expr\n\\    deriving (Eq,Show,Typeable)\n\ninstance Num Expr where\n\\    fromInteger n = Symbol \$ show n\n\\    a + b = Symbol \\\"+\\\" :\$ a :\$ b\n\\    a * b = Symbol \\\"*\\\" :\$ a :\$ b\n\\    ...\n@\n\nIn order to allow pattern matching on expressions of type @Expr@, the\nfollowing @Matchable@ instance is needed:\n\n@\ninstance Matchable Expr where\n\\    Symbol s .=. Symbol z   = Just [s :=: z]\n\\    (e :\$ f) .=. (g :\$ h)   = Just [e :=: g, f :=: h]\n\\    _ .=. _                 = Nothing\n@\n\nNow we can pattern match on expressions even if the constructors of\nthe @Expr@ type were hidden:\n\n@\ntransform :: Expr -> Expr\ntransform e = match e \$ do\n\\    with \$ \\\\a ->        0 + a       ~> a\n\\    with \$ \\\\a b c ->    a * (b + c) ~> a * b + a * c\n\\    with \$ \\\\a ->        a           ~> a\n@";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) ]; }; };
    }