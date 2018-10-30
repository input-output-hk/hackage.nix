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
        name = "escape-artist";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Ryan Daniels";
      maintainer = "rd.github@gmail.com";
      author = "Ryan Daniels";
      homepage = "https://github.com/EarthCitizen/escape-artist#readme";
      url = "";
      synopsis = "ANSI Escape Sequence Text Decoration Made Easy";
      description = "A library for text decoration with ANSI escape sequences made easy. Decorate your terminal text expressively.\nAny complex data type, existing or custom, can be simply colorized by implementing the class 'ToEscapable', then\noutput to terminal or converted to 'String' using the provided functions.\n\nSimple Example\n\n@\nimport Data.Monoid ((\\<\\>))\nimport Text.EscapeArtist\n\nunderlines = Underline \$ FgCyan \\\"I am underlined\\\" \\<\\> UnderlineOff \\\" but I am not \\\" \\<\\> FgMagenta \\\"and I am over here\\\"\n\nputEscLn underlines\n@\n\n<<https://raw.githubusercontent.com/EarthCitizen/escape-artist/master/images/underline_off.png>>\n\nImplementing 'ToEscapable'\n\n@\nimport Data.Monoid ((\\<\\>))\nimport Text.EscapeArtist\n\ndata ABC = A | B deriving (Show, Eq)\n\ninstance ToEscapable ABC where\n&#x20;   toEscapable (A) = FgRed \$ show A\n&#x20;   toEscapable (B) = FgGreen \$ show B\n\ninstance (ToEscapable a) => ToEscapable (Maybe a) where\n&#x20;    toEscapable (Just a) = FgGreen \\\"Just\\\" \\<\\> Inherit \\\" \\\" \\<\\> FgYellow a\n&#x20;    toEscapable a = FgRed \$ show a\n@\n\nNOTE: For GHC < 7.10 you will also need to explicitly derive 'Typeable' for custom data types\nimplementing 'ToEscapable'. See the section Explicitly Derived Typeable in the documentation.\n\nComprehensive Documentation\n\nSee comprehensive documentation with many examples here:\n\n<https://github.com/EarthCitizen/escape-artist#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "escape-artist-spec-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.escape-artist)
            (hsPkgs.hspec)
            (hsPkgs.silently)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
          ];
        };
        "escape-artist-visual-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.escape-artist)
            (hsPkgs.text)
          ];
        };
      };
    };
  }