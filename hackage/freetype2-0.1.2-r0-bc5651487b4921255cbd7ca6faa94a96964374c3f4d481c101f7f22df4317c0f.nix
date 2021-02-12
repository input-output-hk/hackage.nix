{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "freetype2"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright Jason Dagit 2011";
      maintainer = "Jason Dagit <dagitj@gmail.com>";
      author = "Jason Dagit <dagitj@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell binding for FreeType 2 library";
      description = "Wrapper around FreeType 2 library.  Relevant\nexerpts from the FreeType 2 website:\n\nWhat is FreeType 2?\n\nFreeType 2 is a software font engine that is\ndesigned to be small, efficient, highly\ncustomizable, and portable while capable of\nproducing high-quality output (glyph images). It\ncan be used in graphics libraries, display\nservers, font conversion tools, text image\ngeneration tools, and many other products as\nwell.\n\nThe following is a non-exhaustive list of\nfeatures provided by FreeType 2.\n\n* FreeType 2 provides a simple and easy-to-use\nAPI to access font content in a uniform way,\nindependently of the file format. Additionally,\nsome format-specific APIs can be used to access\nspecial data in the font file.\n\n* Unlike most comparable libraries, FreeType 2\nsupports scalable font formats like TrueType or\nType 1 natively and can return the outline data\n(and control instructions/hints) to client\napplications.\n\nBy default, FreeType 2 supports the following\nfont formats.\n\n* TrueType fonts (and collections)\n\n* Type 1 fonts\n\n* CID-keyed Type 1 fonts\n\n* CFF fonts\n\n* OpenType fonts (both TrueType and CFF variants)\n\n* SFNT-based bitmap fonts\n\n* X11 PCF fonts\n\n* Windows FNT fonts\n\n* BDF fonts (including anti-aliased ones)\n\n* PFR fonts\n\n* Type 42 fonts (limited support)\n\nFrom a given glyph outline, FreeType 2 is capable\nof producing a high-quality monochrome bitmap, or\nanti-aliased pixmap, using 256 levels of\n'gray'. This is much better than the 5 levels\nused by Windows 9x\\/98\\/NT\\/2000 or FreeType 1.\n\nFreeType 2 supports all the character mappings\ndefined by the TrueType and OpenType\nspecification. It is also capable of\nautomatically synthetizing a Unicode charmap from\nType 1 fonts, which puts an end to the painful\n'encoding translation' headache common with this\nformat (of course, original encodings are also\navailable in the case where you need them).\n\nThe FreeType 2 core API provides simple functions\nto access advanced information like glyph names\nor kerning data.\n\nFreeType 2 provides information that is often not\navailable from other similar font engines, like\nkerning distances, glyph names, vertical metrics,\netc.\n\nFreeType 2 provides its own caching subsystem\nsince release 2.0.1. It can be used to cache\neither face instances or glyph images\nefficiently.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "freetype-example1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }