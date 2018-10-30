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
      specVersion = "1.2";
      identifier = {
        name = "hs2dot";
        version = "0.1.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "oscar.finnsson@gmail.com";
      author = "Oscar Finnsson";
      homepage = "http://www.github.com/finnsson/hs2graphviz";
      url = "";
      synopsis = "Generate graphviz-code from Haskell-code.";
      description = "@hs2dot@ can generate graphviz code by analyzing Haskell source code.\n\nUsage (to generate a pdf from a source code file Hack.hs)\n\n> hs2dot Hack.hs | dot -T pdf -o Hack.pdf\n\nYou can analyze multiple modules together:\n\n> hs2dot Foo.hs Bar.hs | dot -T png -o FooBar.png\n\nChangelog:\n\n0.1.3: Updated dependencies to be less picky.\n\n0.1.4: Included Hs2Dot.Internals in sdist";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hs2dot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.split)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haskell98)
            (hsPkgs.haskell-src)
          ];
        };
      };
    };
  }