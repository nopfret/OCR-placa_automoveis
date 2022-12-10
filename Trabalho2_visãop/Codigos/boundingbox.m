function boundingbox(I)
[v,u]=find(I);

umax = max(u);
umin = min(u);
vmax = max(v);
vmin = min(v);

hold on;
plot([umin umax], [vmin vmin], 'b','LineWidth',4);
plot([umin umax], [vmax vmax], 'b','LineWidth',4);
plot([umin umin], [vmin vmax], 'b','LineWidth',4);
plot([umax umax], [vmin vmax], 'b','LineWidth',4);
end
