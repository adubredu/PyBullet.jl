# PyBullet.jl

A light-weight Julia wrapper for the awesome [PyBullet](https://github.com/bulletphysics/bullet3) package.

## Installation
1. Open your Julia REPL by typing  `julia` in your terminal.
2. Press `]` on your keyboard to enter the package manager
3. Enter command `add https://github.com/adubredu/PyBullet.jl` and press 
`Enter` on your keyboard to install this package.
4. Press the `Backspace` key on your keyboard to return to the REPL


## Usage
See the [examples](examples) folder for usage examples.


## But...why?
PyBullet is cool, Julia is cooler so they were bound to be together...at some point.

## Why didn't you instead create Bullet.jl
The PyBullet package is essentially Python bindings for the [Bullet C++ library](https://github.com/bulletphysics/bullet3).

It seems like the more astute thing to do (for performance concerns) is to create a Julia wrapper for the core Bullet C++ library instead of creating a Julia wrapper for a Python wrapper of a C++ library. However, the great [Erwin Coumans](https://github.com/erwincoumans) (Creator of Bullet and PyBullet), has created some really cool features in PyBullet, especially for Reinforcement learning applications, that might not be easily accessible when using the raw Bullet C++ library. 

And since it is waaay easier to create this Julia wrapper for the PyBullet Python module than it is to create a Julia wrapper for the Bullet C++ library, 

and since it is currently 2:47am and I'm sleep-deprived,  

and since really coool people like [Christopher Rowley](https://github.com/cjdoris) have created really coool Julia packages like [PythonCall.jl](https://github.com/cjdoris/PythonCall.jl) for effortlessly creating Julia wrappers for Python modules,

I simply decided to create a Julia Wrapper for the super-cool PyBullet module.