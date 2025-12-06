% Supondo que Real_SOC e Estimated_SOC são timeseries

t1 = Real_SOC.Time;
RealSOC = Real_SOC.Data;

t2 = Estimated_SOC.Time;
EstSOC = Estimated_SOC.Data;

t3 = Error_SOC.Time;
ErrorSOC = Error_SOC.Data;

t4 = SOH.Time;
SOHdata = SOH.Data;

t5 = Estimated_R0.Time;
EstR0 = Estimated_R0.Data;

figure;
plot(t1, RealSOC, 'LineWidth', 1.4); hold on;
plot(t2, EstSOC, 'LineWidth', 1.4);

grid on;
xlabel('Tempo (s)', 'FontSize', 14);
ylabel('SOC (%)', 'FontSize', 14);
legend('Real SOC', 'Estimated SOC');
set(gca, 'FontSize', 12);


figure;
plot(t5, EstR0, 'LineWidth', 1.4);
grid on;
xlabel('Tempo (s)', 'FontSize', 14);
ylabel('R0', 'FontSize', 14);
legend('Estimated R0');
set(gca, 'FontSize', 12);


figure;
plot(t1, RealSOC, 'LineWidth', 1.4); hold on;
plot(t2, EstSOC, 'LineWidth', 1.4); hold on;
plot(t4, SOHdata, 'LineWidth', 1.4)

grid on;
xlabel('Tempo (s)', 'FontSize', 14);
ylabel('SOC and SOH (%)', 'FontSize', 14);
legend('Real SOC', 'Estimated SOC','Estimated SOH');
set(gca, 'FontSize', 12);