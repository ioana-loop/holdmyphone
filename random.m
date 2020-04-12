rng(0,'twister');
%Sample Data, Randomized

% Finger 0 = Thumb -----------------------
% Finger 0(x)
mf0x = 77.8;
sf0x = 2;
f0x = sf0x.*randn(90,1) + mf0x;
statsf0x = [mean(f0x) std(f0x) var(f0x)];

% Finger 0(y)
mf0y = 80;
sf0y = 2;
f0y = sf0y.*randn(90,1) + mf0y;
statsf0y = [mean(f0y) std(f0y) var(f0y)];

% Finger 0(z)
mf0z = 0;
sf01 = .5;
f0z = sf01.*randn(90,1) + mf0z;
statsf0z = [mean(f0z) std(f0z) var(f0z)];

% Finger 1(x) - Index -----------------------
% Finger 0(x)
mf1x = 25;
sf1x = 2.5;
f1x = sf1x.*randn(90,1) + mf1x;
statsf1x = [mean(f1x) std(f1x) var(f1x)];

mf1y = 104;
sf1y = 3;
f1y = sf1y.*randn(90,1) + mf1y;
statsf1y = [mean(f1y) std(f1y) var(f1y)];

mf1z = -8;
sf1z = 1;
f1z = sf1z.*randn(90,1) + mf1z;
statsf1z = [mean(f1z) std(f1z) var(f1z)];

% Finger 2 - Middle --------------------------
% Finger 2(x)
mf2x = -7;
sf2x = 4;
f2x = sf2x.*randn(90,1) + mf2x;
statsf2x = [mean(f2x) std(f2x) var(f2x)];

mf2y = 77;
sf2y = 2;
f2y = sf2y.*randn(90,1) + mf2y;
statsf2y = [mean(f2y) std(f2y) var(f2y)];

mf2z = 7.0;
sf2z = 1;
f2z = sf2z.*randn(90,1) + mf2z;
statsf2z = [mean(f2z) std(f2z) var(f2z)];

% Finger 3 - Ring ----------------------------
% Finger 3(x)

mf3x = 6.0;
sf3x = 2;
f3x = sf3x.*randn(90,1) + mf3x;
statsf3x = [mean(f3x) std(f3x) var(f3x)];

mf3y = 45.7;
sf3y = 5;
f3y = sf3y.*randn(90,1) + mf3y;
statsf3y = [mean(f3y) std(f3y) var(f3y)];

mf3z = 10.7;
sf3z = 1;
f3z = sf3z.*randn(90,1) + mf3z;
statsf3z = [mean(f3z) std(f3z) var(f3z)];

% Finger 4 - Pinky ----------------------------
% Finger 4(x)

mf4x = 7.2;
sf4x = 5;
f4x = sf4x.*randn(90,1) + mf4x;
statsf4x = [mean(f4x) std(f4x) var(f4x)];

mf4y = 10.5;
sf4y = 1;
f4y = sf4y.*randn(90,1) + mf4y;
statsf4y = [mean(f4y) std(f4y) var(f4y)];

mf4z = 4.0;
sf4z = 1;
f4z = sf4z.*randn(90,1) + mf4z;
statsf4z = [mean(f4z) std(f4z) var(f4z)];

matrix0 = [f0x f0y f0z];

set(gca,'DataAspectRatio',[1 1 1]);

scatter3(f0x, f0y, f0z, 'r', 'filled');
hold on
axis equal;
scatter3(f1x, f1y, f1z, 'y', 'filled')
scatter3(f2x, f2y, f2z, 'b', 'filled')
scatter3(f3x, f3y, f3z, 'g', 'filled')
scatter3(f4x, f4y, f4z, 'o', 'filled')

b = [76 140 -8];

my_vertices = [0 0 0; 0 b(2) 0; b(1) b(2) 0; b(1) 0 0; 0 0 b(3); 0 b(2) b(3); b(1) b(2) b(3); b(1) 0 b(3)];
my_faces = [1 2 3 4; 2 6 7 3; 4 3 7 8; 1 5 8 4; 1 2 6 5; 5 6 7 8];
patch('Vertices', my_vertices, 'Faces', my_faces, 'FaceColor', 'w');

% x= [0 77 77 0];
% y= [0 0 140 140];
% patch(x, y, 'yellow');
%patch([[1 1]*xl(1) [1 1]*xl(2)], [yl fliplr(yl)],[1 1 1 1]*2.5, 'r', 'FaceAlpha',1);
hold off
