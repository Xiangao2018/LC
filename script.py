# !usr/bin/env python3

# _*_ coding: utf-8 _*_

import os
import urllib

BASE_URL = "https://github.com/Rsenjoyer/LeetCode-in-Swift/tree/master/"

File_Relative_Path = ["Swift/easy"]

README_PATH = os.getcwd() + "/README.md"


def encode(x):
    return urllib.parse.quote(x)


for dir in File_Relative_Path:
    dir_path = os.path.join(os.getcwd(), dir)

    lists = sorted(os.listdir(dir_path))

    contents = []

    for fileName in lists:
        if not fileName.endswith(".swift"):
            continue
        print(fileName)
        encodePath = encode(fileName)

        githubPath = BASE_URL + dir + "/" + encodePath

        mdContent = "[" + fileName[:-6] + "](" + githubPath + ")"

        contents.append(mdContent)
        contents.append("\n\n")

    with open(README_PATH, "w") as f:

        f.write("# LeetCode-easy\n\n")

        for content in contents:
            f.write(content)