# git-gro
This is a small shell script to update the origin's (remote) url to the url of the only other remote

Problem:
Some plugins (including IDE plugins) help import your local git repo into a service like Github or Gitlab. They create a new remote with the folder name. I have some global git config flags set for remote "origin", so I would want the remote url to be set to origin. 

Solution:
This shell script:
- updates origin's url from the other remote
- removes the non-origin remote

TODO: flesh out the README; please file an issue and I shall do this

License: The MIT License (MIT)
Copyright (c) 2016 Dheeraj Bhaskar

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
