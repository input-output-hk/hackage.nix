{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "tomland"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "2018-2019 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/tomland";
      url = "";
      synopsis = "Bidirectional TOML serialization";
      description = "Implementation of bidirectional TOML serialization. Simple codecs look like this:\n\n@\n__data__ User = User\n\\    { userName :: Text\n\\    , userAge  :: Int\n\\    }\n\\\n\\userCodec :: TomlCodec User\n\\userCodec = User\n\\    \\<\$\\> Toml.text \"name\" .= userName\n\\    \\<*\\> Toml.int  \"age\"  .= userAge\n@\n\nThe following blog post has more details about library design:\n\n* [tomland: Bidirectional TOML serialization](https://kowainik.github.io/posts/2019-01-14-tomland)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.parser-combinators)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "readme" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.tomland) ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit))
            ];
          };
        "play-tomland" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tomland)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "tomland-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-silver)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tomland)
            (hsPkgs.unordered-containers)
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover))
            ];
          };
        };
      benchmarks = {
        "tomland-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.deepseq)
            (hsPkgs.gauge)
            (hsPkgs.htoml)
            (hsPkgs.htoml-megaparsec)
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.toml-parser)
            (hsPkgs.tomland)
            ];
          };
        };
      };
    }