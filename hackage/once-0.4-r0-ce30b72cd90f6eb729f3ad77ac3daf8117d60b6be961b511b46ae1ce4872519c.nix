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
      specVersion = "1.12";
      identifier = {
        name = "once";
        version = "0.4";
      };
      license = "GPL-3.0-only";
      copyright = "2015-2018 Dmitry Bogatov";
      maintainer = "KAction@debian.org";
      author = "Dmitry Bogatov";
      homepage = "https://gitlab.com/kaction/haskell-once";
      url = "";
      synopsis = "memoization for IO actions and functions";
      description = "Package provides single polymorphic function 'once', that allows you\nto memoize IO actions and functions, evaluating them at most once.\n\n>>> let mkStamp = (putStrLn \"stamping\" >> writeFile \"/tmp/stamp\" \"\") :: IO ()\n>>> -- onceStamp :: IO ()\n>>> onceStamp <- once mkStamp\n>>> -- onceStamp actually evaluates mkStamp it wraps first time.\n>>> onceStamp\nstamping\n>>> -- but second time result `()' is memoized, no action is performed.\n>>> onceStamp\n>>> -- we can memoize functions too\n>>> foo <- once \$ \\x -> print \"foo\" >> print (x :: Int)\n>>> -- action will be performed once for every distinct argument\n>>> foo 10\nfoo\n10\n>>> foo 10\n10\n>>> foo 4\nfoo\n4";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.once)
            (hsPkgs.template-haskell)
            (hsPkgs.unordered-containers)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }