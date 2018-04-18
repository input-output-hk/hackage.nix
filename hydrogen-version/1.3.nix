{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hydrogen-version";
          version = "1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "julian@scravy.de";
        author = "Julian Fleischer";
        homepage = "https://scravy.de/hydrogen-version/";
        url = "";
        synopsis = "Hydrogen Version Type";
        description = "A sane replacement for \"Data.Version\" from the @base@ package.\n\n\"Hydrogen.Version\" is also exported by \"Hydrogen.Prelude\" where\nit comes with a few more instances (e.g. for \"Data.Serialize\").\n\n>>> Differences to Data.Version\n\n[@Sane 'Ord' instance@] \"Data.Version\" relies on 'Ord' for lists,\nwhich will consider @1.0@ to be less than @1.0.0@. @Hydrogen.Version@\nconsiders these to be equal.\n\n[@Sane 'Read' and 'Show' instances@] With @Hydrogen.Version@ you can\njust do @read \"1.0.0\" :: Version@, whereas the 'Read' and 'Show'\ninstances for \"Data.Version\" do not give a concise representation:\n\n> show hydrogenVersion == \"1.0.0\"\n> show dataVersion == \"Version versionBranch = [1,0,0], versionTags = []\"\n\n[@Stricter API@] In @Hydrogen.Version@ you can create a 'Version'\nonly via 'mkVersion', whereas in \"Data.Version\" the constructor is\nexported, thus you could so such nonsense as\n@Data.Version.Version [] []@ (which is not a proper version at all).\n\n[@No Tags@] @Hydrogen.Version@ does not support tags. This is\nintentional, since there is no agreed upon definition for 'Ord' in\nthe presence of tags (consider @alpha@ vs @beta@ vs @snapshot@ vs\n@ga@ vs ...).";
        buildType = "Simple";
      };
      components = {
        hydrogen-version = {
          depends  = [ hsPkgs.base ];
        };
      };
    }