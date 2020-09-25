# SimpleDiseaseModel
Simple probabilistic model for the spread of diseases. 

See the model_walkthrough.pdf for a detailed explanation of the findings.

basic_corona_sim is a function which takes in an initial count of people who are infected, 
a number of iterations to run, and a probability mass function for how many people any given person with the
disease may spread it to, and outputs a vector of infected people over the iterations.

This simple model is a Markov Chain which simulates a multinomial distribution to determine its transitions. At each iteration,
it assigns each infected person a "bucket" based on the p.m.f. which determines how many people they spread it to (1, 2, 3, ...).
From there, it then adds the corresponding number of balls to the infected population for the next iteration.


This is by no means an accurate model for how diseases spread, as it doesn't take into account recoveries, treatments, people with symptoms being more careful, etc. And rather just treats the 
population as a bunch of balls randomly being assigned buckets. But it does provide some cool representations of why a disease is able to spread so fast.
