using PyBullet
p = pybullet

p.connect(p.GUI)
p.setAdditionalSearchPath(pybullet_data.getDataPath())
p.setGravity(0, 0, -9.81)
planeID = p.loadURDF("plane.urdf")
boxID = p.loadURDF("r2d2.urdf", [0,0,1], p.getQuaternionFromEuler([0.0,0.0,0.0]))

for i=1:10000
    p.stepSimulation()
    sleep(1.0/240.0)
end