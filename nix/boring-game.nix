{
  "0.1.0.0" = {
    sha256 = "17524b407d58f7892537c724ab73d3e2ab0a406f52de76e1c18e97aefa1415d8";
    revisions = {
      r0 = {
        nix = import ../hackage/boring-game-0.1.0.0-r0-c2aa14a4e0d6dda88ab1a6def9de36acea463c5f187d93c9ef729abf7d201212.nix;
        revNum = 0;
        sha256 = "c2aa14a4e0d6dda88ab1a6def9de36acea463c5f187d93c9ef729abf7d201212";
        };
      r1 = {
        nix = import ../hackage/boring-game-0.1.0.0-r1-3a2aaa5cca7ccb83b4efc1bfdc5bbe350e7d489ec79104457fad91b2e71e38d0.nix;
        revNum = 1;
        sha256 = "3a2aaa5cca7ccb83b4efc1bfdc5bbe350e7d489ec79104457fad91b2e71e38d0";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "51cc6d7b7cdda9ca35021c7005d75773119bdb3331f5fb40c750c9e231392b81";
    revisions = {
      r0 = {
        nix = import ../hackage/boring-game-0.1.0.1-r0-75696d04f15fbf4f186e69b118abbe61e3e233b31e4fc1b584a87ee97d336eb5.nix;
        revNum = 0;
        sha256 = "75696d04f15fbf4f186e69b118abbe61e3e233b31e4fc1b584a87ee97d336eb5";
        };
      default = "r0";
      };
    };
  }