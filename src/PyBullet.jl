module PyBullet

using PythonCall
const pybullet = PythonCall.pynew()
const pybullet_data = PythonCall.pynew()

function __init__()
    PythonCall.pycopy!(pybullet, pyimport("pybullet"))
    PythonCall.pycopy!(pybullet_data, pyimport("pybullet_data"))
end

export pybullet,
       pybullet_data
end


