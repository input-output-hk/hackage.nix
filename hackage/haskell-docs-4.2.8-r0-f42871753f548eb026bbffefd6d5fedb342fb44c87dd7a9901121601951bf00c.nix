{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "haskell-docs";
        version = "4.2.8";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Chris Done";
      homepage = "http://github.com/ivan-m/haskell-docs";
      url = "";
      synopsis = "A program to find and display the docs and type of a name";
      description = "Given a module name and a name, or just a name, it will find and display\nthe documentation of that name.\n\n/EXAMPLE USAGE/\n\n> \$ haskell-docs hSetBuffering\n> Package: base\n> Module: GHC.IO.Handle\n> hSetBuffering :: Handle -> BufferMode -> IO ()\n> Computation hSetBuffering `hdl mode` sets the mode of buffering for\n>  handle `hdl` on subsequent reads and writes.\n\n/INSTALLATION/\n\nYou should ensure that you have\n\n> documentation: True\n\nin your .cabal/config so that the necessary\n.haddock files are generated.\n\nHaddock is very sensitive to the GHC version. This program tries not to be. If\nyou cannot install this package due to a version problem, open a Github issue.\nIf the versions match up but the build fails, open a Github issue. Neither\ncase should arise.\n\n/USING WITH GHCI/\n\n> > :def doc \\input -> return (\":!haskell-docs \" ++ input)\n> > :doc getContents\n> The getContents operation returns all user input as a single string,\n>  which is read lazily as it is needed\n>  (same as hGetContents stdin).\n\nAdd the above :def to your user .ghci to have it on start-up.\n\n/CONTRIBUTION AND ISSUES/\n\nIssues\\/ideas\\/contributions please make a Github issue: <http://github.com/ivan-m/haskell-docs/issues>\n";
      buildType = "Simple";
    };
    components = {
      "haskell-docs" = {
        depends  = (((((((([
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.monad-loops)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ] ++ pkgs.lib.optionals (compiler.isGhc && false) [
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && false) [
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && false) [
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.eq "7.8.4") [
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.eq "7.8.3") (hsPkgs.haddock)) ++ pkgs.lib.optional (compiler.isGhc && false) (hsPkgs.haddock)) ++ pkgs.lib.optional (compiler.isGhc && false) (hsPkgs.haddock)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.8.4") (hsPkgs.haddock-api)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.cryptonite);
      };
      exes = {
        "haskell-docs" = {
          depends  = [
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.haskell-docs)
            (hsPkgs.ghc)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-docs)
          ];
        };
      };
    };
  }